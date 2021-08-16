/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     HTTP_METHOD = 258,
     STATE = 259,
     COLON = 260,
     IP = 261,
     AUTOINDEX = 262,
     PATH = 263,
     NUMBER = 264,
     ROOT = 265,
     LIMIT_EXCEPT = 266,
     EQUAL = 267,
     SERVER = 268,
     LISTEN = 269,
     SERVER_NAME = 270,
     LOCATION = 271,
     ERROR_PAGE = 272,
     CLIENT_MAX_BODY_SIZE = 273,
     WORD = 274,
     FILENAME = 275,
     QUOTE = 276,
     OBRACE = 277,
     EBRACE = 278,
     SEMICOLON = 279
   };
#endif
/* Tokens.  */
#define HTTP_METHOD 258
#define STATE 259
#define COLON 260
#define IP 261
#define AUTOINDEX 262
#define PATH 263
#define NUMBER 264
#define ROOT 265
#define LIMIT_EXCEPT 266
#define EQUAL 267
#define SERVER 268
#define LISTEN 269
#define SERVER_NAME 270
#define LOCATION 271
#define ERROR_PAGE 272
#define CLIENT_MAX_BODY_SIZE 273
#define WORD 274
#define FILENAME 275
#define QUOTE 276
#define OBRACE 277
#define EBRACE 278
#define SEMICOLON 279




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

