.class abstract Lio/bidmachine/AdsFormat$l;
.super Ljava/lang/Object;
.source "AdsFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lxq/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/AdsType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/AdsFormat$l;->a:Lio/bidmachine/AdsType;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lio/bidmachine/AdsFormat$l;)Lio/bidmachine/AdsType;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdsFormat$l;->a:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method final b(Lio/bidmachine/AdsType;Lxq/d;Lio/bidmachine/AdContentType;)Z
    .locals 1
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat$l;->a:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/AdsFormat$l;->c(Lxq/d;Lio/bidmachine/AdContentType;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method abstract c(Lxq/d;Lio/bidmachine/AdContentType;)Z
    .param p1    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation
.end method
