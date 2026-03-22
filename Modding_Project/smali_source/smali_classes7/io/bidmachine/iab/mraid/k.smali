.class public final Lio/bidmachine/iab/mraid/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/j;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/iab/mraid/k;->a:Lio/bidmachine/iab/mraid/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-string v0, "sms"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/k;->a:Lio/bidmachine/iab/mraid/j;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->d()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const-string v0, "tel"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lio/bidmachine/iab/mraid/k;->a:Lio/bidmachine/iab/mraid/j;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->f()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    const-string v0, "calendar"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lio/bidmachine/iab/mraid/k;->a:Lio/bidmachine/iab/mraid/j;

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->b()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_2
    const-string v0, "storePicture"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/bidmachine/iab/mraid/k;->a:Lio/bidmachine/iab/mraid/j;

    .line 57
    .line 58
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/j;->e()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1

    .line 63
    :cond_3
    const/4 p1, 0x1

    .line 64
    return p1
.end method
