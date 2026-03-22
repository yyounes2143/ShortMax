.class public final Ldf/e$b;
.super Ljava/lang/Object;
.source "FloatViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:I

.field final synthetic e:Ldf/e;


# direct methods
.method public constructor <init>(Ldf/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldf/e$b;->e:Ldf/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$anim;->anim_float_view_top_enter:I

    .line 7
    .line 8
    iput p1, p0, Ldf/e$b;->a:I

    .line 9
    .line 10
    sget p1, Lcom/startshorts/androidplayer/R$anim;->anim_float_view_top_exit:I

    .line 11
    .line 12
    iput p1, p0, Ldf/e$b;->b:I

    .line 13
    .line 14
    const-wide/16 v0, 0x1388

    .line 15
    .line 16
    iput-wide v0, p0, Ldf/e$b;->c:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Ldf/e$b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Ldf/e$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldf/e$b;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Ldf/e$b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldf/e$b;->d:I

    .line 2
    .line 3
    return-void
.end method
