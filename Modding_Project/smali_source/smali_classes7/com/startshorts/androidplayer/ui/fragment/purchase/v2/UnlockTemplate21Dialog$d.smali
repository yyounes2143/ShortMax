.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$d;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->A1(Ljava/util/List;Ljava/util/List;)V
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog\n*L\n1#1,102:1\n1131#2:103\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$d;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$d;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->n0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->U()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    :goto_0
    move p1, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p1, v1

    .line 31
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p2, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$d;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->n0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->U()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eq p2, v0, :cond_3

    .line 59
    .line 60
    :goto_2
    move v1, v2

    .line 61
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p1, p2}, Lps/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1
.end method
