package models

object CrosswordType extends Enumeration {
  type CrosswordType = Value
  val Picture, Syllable, Open, Word, Crypto = Value
}
import CrosswordType._

object CrosswordSize extends Enumeration {
  type CrosswordSize = Value
  val A4_Vertical, A4_Horizontal, A5_Vertical, A5_Horizontal, A3_Tabloid, Other = Value
}
import CrosswordSize._

object CrosswordMainImage extends Enumeration {
  type CrosswordMainImage = Value
  val Photo, Drawing = Value
}
import CrosswordMainImage._

case class Crossword(
                    id: Int,
                    size: CrosswordSize,
                    cType: CrosswordType,
                    mainImage: CrosswordMainImage,
                    binaryPath: String
                    )

object JsonFormats {
  import play.api.libs.json.Json

  // Generates Writes and Reads for Feed and User thanks to Json Macros
  implicit val puzzFormat = Json.format[Crossword]
}