.class public final Ldf/f$a;
.super Ljava/lang/Object;
.source "FloatViewManagerFactory.kt"

# interfaces
.implements Lef/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldf/f;->c(Landroid/view/View;Lff/a$a;)Ldf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldf/f$a;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "parent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {}, Ldf/f;->a()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    mul-int/lit8 p2, p2, 0x2

    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    iget-object p2, p0, Ldf/f$a;->a:Landroid/view/View;

    .line 25
    .line 26
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    const/4 v1, -0x2

    .line 29
    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-object p2
.end method
