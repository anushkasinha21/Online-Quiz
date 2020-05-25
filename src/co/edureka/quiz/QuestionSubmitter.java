package co.edureka.quiz;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class QuestionSubmitter {
	
	public void ModifyXMLFile(NewQuestion newQuestion, String test) {
		
		try {
			String filepath = "C:\\quizzes\\"+test+"-quiz-1.xml";
			DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
			Document doc = docBuilder.parse(filepath);
			
			
			int totalquestion = doc.getElementsByTagName("question").getLength();
			System.out.println(totalquestion);
			totalquestion++;
			String new_total=String.valueOf(totalquestion);
			Node totalQuizQuestions = doc.getElementsByTagName("totalQuizQuestions").item(0);
			totalQuizQuestions.setTextContent(new_total);
			
			
			Node questions = doc.getElementsByTagName("questions").item(0);
//			Node totalQuestions = questions.getFirstChild();
//			int totalNoQuestions = Integer.parseInt(questions.);
//			totalNoQuestions++;
//			totalQuestions.setTextContent(Integer.toString(totalNoQuestions));
			
			
			Element question = doc.createElement("question");
			questions.appendChild(question);
			
			Element quizQuestion = doc.createElement("quizquestion");
			quizQuestion.appendChild(doc.createTextNode(newQuestion.getQuizquestion()));
			question.appendChild(quizQuestion);
			
			Element option1 = doc.createElement("answer");
			option1.appendChild(doc.createTextNode(newQuestion.getOption1()));
			question.appendChild(option1);
			
			Element option2 = doc.createElement("answer");
			option2.appendChild(doc.createTextNode(newQuestion.getOption2()));
			question.appendChild(option2);
			
			Element option3 = doc.createElement("answer");
			option3.appendChild(doc.createTextNode(newQuestion.getOption3()));
			question.appendChild(option3);
			
			Element option4 = doc.createElement("answer");
			option4.appendChild(doc.createTextNode(newQuestion.getOption4()));
			question.appendChild(option4);
			
			Element correct = doc.createElement("correct");
			correct.appendChild(doc.createTextNode(newQuestion.getCorrect()));
			question.appendChild(correct);
			
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			Transformer transformer =  transformerFactory.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File(filepath));
			transformer.transform(source, result);
			
			System.out.println("done");
			
		
		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		 } catch (TransformerException tfe) {
			tfe.printStackTrace();
		 } catch (IOException ioe) {
			ioe.printStackTrace();
		 } catch (SAXException sae) {
			 sae.printStackTrace();
		 }
		
	}
}
	