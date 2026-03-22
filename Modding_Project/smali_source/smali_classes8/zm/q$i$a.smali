.class public final Lzm/q$i$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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

.method static synthetic a(Lzm/q$i$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$i$a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lzm/q$i$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$i$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lzm/q$i$a;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$i$a;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d()Lzm/q$i;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$i;-><init>(Lzm/q$i$a;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
