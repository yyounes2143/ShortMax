.class public final Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;
.super Lz2/a;
.source "ActBottomFloatView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->Q(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/a<",
        "Ly3/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->b:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lz2/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->b:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "showImage failed -> url("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ") reason("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    const-string p2, "null"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p2, 0x29

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->b:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "showImage succeed -> url("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x29

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0, p1, p2, p3}, Lz2/a;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
