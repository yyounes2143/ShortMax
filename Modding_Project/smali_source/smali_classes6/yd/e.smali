.class public final synthetic Lyd/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyd/e;->a:Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;

    .line 5
    .line 6
    iput p2, p0, Lyd/e;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lyd/e;->a:Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;

    .line 2
    .line 3
    iget v1, p0, Lyd/e;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->a(Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;I)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
