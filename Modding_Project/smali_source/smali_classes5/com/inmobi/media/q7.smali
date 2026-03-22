.class public final Lcom/inmobi/media/q7;
.super Lcom/inmobi/media/Dc;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "constructor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "valueClass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/inmobi/media/Dc;-><init>(Lcom/inmobi/commons/utils/json/Constructor;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/inmobi/media/q7;->b:Ljava/lang/Class;

    .line 15
    .line 16
    return-void
.end method
