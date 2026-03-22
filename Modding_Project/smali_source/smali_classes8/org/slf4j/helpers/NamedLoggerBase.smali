.class abstract Lorg/slf4j/helpers/NamedLoggerBase;
.super Ljava/lang/Object;
.source "NamedLoggerBase.java"

# interfaces
.implements Ldu/a;
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/NamedLoggerBase;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ldu/b;->j(Ljava/lang/String;)Ldu/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
