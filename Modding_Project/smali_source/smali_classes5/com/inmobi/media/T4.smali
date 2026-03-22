.class public final Lcom/inmobi/media/T4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/T4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/T4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/T4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/T4;->a:Lcom/inmobi/media/T4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/inmobi/media/ec;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "TAG"

    .line 15
    .line 16
    const-string v3, "fireBackButtonPressedEvent "

    .line 17
    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/ec;->I:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v1, "broadcastEvent(\'backButtonPressed\')"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1
.end method
