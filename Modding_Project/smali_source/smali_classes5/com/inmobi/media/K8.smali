.class public abstract Lcom/inmobi/media/K8;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:B


# direct methods
.method public constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-byte p2, p0, Lcom/inmobi/media/K8;->a:B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/inmobi/media/h8;Lcom/inmobi/media/L8;IILcom/inmobi/media/D8;)V
.end method

.method public final getType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/K8;->a:B

    .line 2
    .line 3
    return v0
.end method
