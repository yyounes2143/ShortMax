.class final Lcom/jiuzhou/cdn/a$e;
.super Ljava/lang/Object;
.source "CdnConnectivityChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
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
    iput-object p1, p0, Lcom/jiuzhou/cdn/a$e;->a:Lgt/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jiuzhou/cdn/a$e;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jiuzhou/cdn/a$e;->a:Lgt/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lgt/i;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/jiuzhou/cdn/a$a;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/jiuzhou/cdn/a$e;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/jiuzhou/cdn/a$a;-><init>(Ljava/lang/String;JZ)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/jiuzhou/cdn/a$e;->a:Lgt/i;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-virtual {p0, v0, v1}, Lcom/jiuzhou/cdn/a$e;->a(J)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method
