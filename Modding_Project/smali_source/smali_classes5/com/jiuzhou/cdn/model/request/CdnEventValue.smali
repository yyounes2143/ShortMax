.class public final Lcom/jiuzhou/cdn/model/request/CdnEventValue;
.super Ljava/lang/Object;
.source "CdnEventValue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/jiuzhou/cdn/model/request/CdnEventValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VALUE_FIRST_FRAME:Ljava/lang/String; = "FIRST_FRAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VALUE_PLAY:Ljava/lang/String; = "PLAY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VALUE_SEEK:Ljava/lang/String; = "SEEK"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VALUE_SWITCH:Ljava/lang/String; = "SWITCH"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jiuzhou/cdn/model/request/CdnEventValue;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jiuzhou/cdn/model/request/CdnEventValue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jiuzhou/cdn/model/request/CdnEventValue;->INSTANCE:Lcom/jiuzhou/cdn/model/request/CdnEventValue;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
