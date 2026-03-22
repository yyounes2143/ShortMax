.class public final Lcom/vungle/ads/internal/model/AdPayload$getDownloadableAssets$$inlined$sortByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/model/AdPayload;->getDownloadableAssets(Ljava/io/File;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/vungle/ads/internal/model/AdAsset;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/AdAsset;->isRequired()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p1, Lcom/vungle/ads/internal/model/AdAsset;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdAsset;->isRequired()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2, p1}, Lps/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method
