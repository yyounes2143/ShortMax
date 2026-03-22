.class public abstract Lcom/inmobi/media/X1;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field public final a:Lms/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/inmobi/media/W1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/inmobi/media/W1;-><init>(Lcom/inmobi/media/X1;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/inmobi/media/X1;->a:Lms/i;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public abstract f()Lcom/inmobi/media/M6;
.end method

.method public final getLandingPageHandler()Lcom/inmobi/media/M6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/X1;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/inmobi/media/M6;

    .line 8
    .line 9
    return-object v0
.end method
