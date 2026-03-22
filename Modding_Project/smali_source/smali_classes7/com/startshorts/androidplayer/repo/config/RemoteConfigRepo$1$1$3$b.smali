.class public final Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$b;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1\n+ 2 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n*L\n1#1,171:1\n75#2:172\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$b;->a:Ljava/util/Comparator;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3$b;->a:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast p2, Lkotlin/Pair;

    .line 11
    .line 12
    invoke-virtual {p2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p1, Lkotlin/Pair;

    .line 23
    .line 24
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, p1}, Lps/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_0
    return v0
.end method
