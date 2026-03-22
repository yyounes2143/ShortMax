.class public final Lcom/inmobi/media/re;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lkotlin/jvm/internal/Lambda;


# direct methods
.method public constructor <init>(IIILkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/inmobi/media/re;->a:I

    .line 10
    .line 11
    iput p2, p0, Lcom/inmobi/media/re;->b:I

    .line 12
    .line 13
    iput p3, p0, Lcom/inmobi/media/re;->c:I

    .line 14
    .line 15
    check-cast p4, Lkotlin/jvm/internal/Lambda;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/inmobi/media/re;->d:Lkotlin/jvm/internal/Lambda;

    .line 18
    .line 19
    return-void
.end method
