.class public final Lio/bidmachine/iab/mraid/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    const-string v1, "storePicture"

    .line 4
    .line 5
    const-string v2, "sms"

    .line 6
    .line 7
    const-string v3, "tel"

    .line 8
    .line 9
    const-string v4, "inlineVideo"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/bidmachine/iab/mraid/i;->a:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private static a(Lio/bidmachine/iab/mraid/j;)Ljava/util/ArrayList;
    .locals 2
    .param p0    # Lio/bidmachine/iab/mraid/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/mraid/j;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/j;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "tel"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/j;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "sms"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/j;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v1, "inlineVideo"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/j;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v1, "calendar"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/j;->e()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    const-string p0, "storePicture"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_4
    return-object v0
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/j;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/mraid/i;->a:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/mraid/j;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lio/bidmachine/iab/mraid/i;->a(Lio/bidmachine/iab/mraid/j;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method
