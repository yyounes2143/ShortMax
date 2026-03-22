.class public final Lii/d$b;
.super Lyd/d;
.source "MergeTouristDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lii/d;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lii/d;


# direct methods
.method constructor <init>(Lii/d;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lii/d$b;->e:Lii/d;

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
    iget-object p1, p0, Lii/d$b;->e:Lii/d;

    .line 7
    .line 8
    invoke-virtual {p1}, Lii/d;->v()Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lii/d$b;->e:Lii/d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lfi/a;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
