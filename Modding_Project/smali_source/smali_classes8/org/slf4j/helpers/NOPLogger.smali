.class public Lorg/slf4j/helpers/NOPLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "NOPLogger.java"


# static fields
.field public static final b:Lorg/slf4j/helpers/NOPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/slf4j/helpers/NOPLogger;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLogger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/slf4j/helpers/NOPLogger;->b:Lorg/slf4j/helpers/NOPLogger;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NOP"

    .line 2
    .line 3
    return-object v0
.end method
