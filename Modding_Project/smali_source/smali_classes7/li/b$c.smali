.class public final Lli/b$c;
.super Lyd/d;
.source "NewTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lli/b;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lli/b;


# direct methods
.method constructor <init>(Lli/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lli/b$c;->e:Lli/b;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lli/b$c;->e:Lli/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfi/a;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lli/b$c;->e:Lli/b;

    .line 12
    .line 13
    invoke-static {v0}, Lli/b;->v(Lli/b;)Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->getNegativeButtonClickListener()Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
