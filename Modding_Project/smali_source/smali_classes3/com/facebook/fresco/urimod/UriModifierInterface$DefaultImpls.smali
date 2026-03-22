.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$DefaultImpls;
.super Ljava/lang/Object;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic modifyUri$default(Lcom/facebook/fresco/urimod/UriModifierInterface;Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lc3/q;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;ZILjava/lang/Object;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
    .locals 7

    .line 1
    if-nez p8, :cond_2

    .line 2
    .line 3
    and-int/lit8 p8, p7, 0x10

    .line 4
    .line 5
    if-eqz p8, :cond_0

    .line 6
    .line 7
    const/4 p5, 0x0

    .line 8
    :cond_0
    move-object v5, p5

    .line 9
    and-int/lit8 p5, p7, 0x20

    .line 10
    .line 11
    if-eqz p5, :cond_1

    .line 12
    .line 13
    const/4 p6, 0x0

    .line 14
    :cond_1
    move v6, p6

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    move-object v3, p3

    .line 19
    move-object v4, p4

    .line 20
    invoke-interface/range {v0 .. v6}, Lcom/facebook/fresco/urimod/UriModifierInterface;->modifyUri(Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lc3/q;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;Z)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "Super calls with default arguments not supported in this target, function: modifyUri"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method
