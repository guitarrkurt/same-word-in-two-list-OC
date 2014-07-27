/*
 Authroe: David Guillermo López Vázquez.
 Email: guitarrkurt@icloud.com
Description: This program, search a word that coincide with two lists.
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        //Pasamos las rutas donde se encuentran nuestros archivos
        NSString *path1 = @"/usr/share/dict/propernames";
        NSString *path2 = @"/usr/share/dict/words";
        
        //Archivos propios
        //NSString *path1 = @"/Users/mac/Desktop/names";
        //NSString *path2 = @"/Users/mac/Desktop/words";
        
        //Cargamos nuestros archivos
        NSString *firsFile = [NSString stringWithContentsOfFile: path1 encoding:NSUTF8StringEncoding error:nil];
        NSString *secondFile = [NSString stringWithContentsOfFile:path2 encoding:NSUTF8StringEncoding error:nil];
        
        //Metemos en un arreglo todas las palabras
        NSArray *namesArray = [firsFile componentsSeparatedByString:@"\n"];
        NSArray *wordsArray = [secondFile componentsSeparatedByString:@"\n"];
        
        //Recorremos el arreglo en busca de nuestro patron
        //Cada nombre va a buscarse en toda la lista de Regular Words
        for(NSString *indexName in namesArray)
        {
            for(NSString *indexWord in wordsArray)
            {
                //Debuggin...
                //NSLog(@"%@ compare %@\n", indexName, indexWord);
                
                if([indexName compare:indexWord options:NSCaseInsensitiveSearch] == NSOrderedSame)
                {
                    //Debuggin...
                    //NSLog(@"YES\n");
                    NSLog(@"%@ is too a Regular Word !!!\n", indexName);
                }
            }
        }
        //Finalizamos correctamente
    }
    return 0;
}
