.class public final synthetic Lt3/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lt3/k$a;

.field public final synthetic b:Lt3/k;


# direct methods
.method public synthetic constructor <init>(Lt3/k$a;Lt3/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt3/h;->a:Lt3/k$a;

    .line 5
    .line 6
    iput-object p2, p0, Lt3/h;->b:Lt3/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lt3/h;->a:Lt3/k$a;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/h;->b:Lt3/k;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lt3/k$a;->e(Lt3/k$a;Lt3/k;)Lr3/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
