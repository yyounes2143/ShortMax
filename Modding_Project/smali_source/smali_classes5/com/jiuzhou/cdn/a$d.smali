.class final Lcom/jiuzhou/cdn/a$d;
.super Ljava/lang/Object;
.source "CdnConnectivityChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiuzhou/cdn/a;->b(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Lcom/jiuzhou/cdn/a$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgt/i;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/i<",
            "-",
            "Lcom/jiuzhou/cdn/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/a$d;->a:Lgt/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jiuzhou/cdn/a$d;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/jiuzhou/cdn/a$d;->a:Lgt/i;

    .line 2
    .line 3
    invoke-interface {p3}, Lgt/i;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lcom/jiuzhou/cdn/a$d;->a:Lgt/i;

    .line 10
    .line 11
    invoke-interface {p3}, Lgt/i;->isCompleted()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    new-instance p3, Lcom/jiuzhou/cdn/a$a;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/jiuzhou/cdn/a$d;->b:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p3, v0, p1, p2, v1}, Lcom/jiuzhou/cdn/a$a;-><init>(Ljava/lang/String;JZ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/jiuzhou/cdn/a$d;->a:Lgt/i;

    .line 26
    .line 27
    invoke-static {p3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    check-cast p2, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p2}, Lcom/jiuzhou/cdn/a$d;->a(JLjava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method
