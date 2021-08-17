/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_YACC_HH_INCLUDED
# define YY_YY_YACC_HH_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    QUOTE = 258,
    OBRACE = 259,
    EBRACE = 260,
    SEMICOLON = 261,
    COLON = 262,
    HTTP_METHOD = 263,
    NUMBER = 264,
    WORD = 265,
    STATE = 266,
    EQUAL = 267,
    SERVER = 268,
    LISTEN = 269,
    SERVER_NAME = 270,
    LOCATION = 271,
    ERROR_PAGE = 272,
    CLIENT_MAX_BODY_SIZE = 273,
    IP = 274,
    AUTOINDEX = 275,
    PATH = 276,
    ROOT = 277,
    LIMIT_EXCEPT = 278,
    FILENAME = 279
  };
#endif
/* Tokens.  */
#define QUOTE 258
#define OBRACE 259
#define EBRACE 260
#define SEMICOLON 261
#define COLON 262
#define HTTP_METHOD 263
#define NUMBER 264
#define WORD 265
#define STATE 266
#define EQUAL 267
#define SERVER 268
#define LISTEN 269
#define SERVER_NAME 270
#define LOCATION 271
#define ERROR_PAGE 272
#define CLIENT_MAX_BODY_SIZE 273
#define IP 274
#define AUTOINDEX 275
#define PATH 276
#define ROOT 277
#define LIMIT_EXCEPT 278
#define FILENAME 279

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (std::vector<Server> *servers);

#endif /* !YY_YY_YACC_HH_INCLUDED  */
