.class public final Lv4/a;
.super Ljava/lang/Object;
.source "ShareInternalUtility.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShareInternalUtility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareInternalUtility.kt\ncom/facebook/share/internal/ShareInternalUtility\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,561:1\n1603#2,9:562\n1855#2:571\n1856#2:573\n1612#2:574\n1549#2:575\n1620#2,3:576\n1603#2,9:579\n1855#2:588\n1856#2:590\n1612#2:591\n1#3:572\n1#3:589\n*S KotlinDebug\n*F\n+ 1 ShareInternalUtility.kt\ncom/facebook/share/internal/ShareInternalUtility\n*L\n229#1:562,9\n229#1:571\n229#1:573\n229#1:574\n230#1:575\n230#1:576,3\n248#1:579,9\n248#1:588\n248#1:590\n248#1:591\n229#1:572\n248#1:589\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lv4/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv4/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv4/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv4/a;->a:Lv4/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p0    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/GraphRequest$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "imageUri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/facebook/internal/u0;->b0(Landroid/net/Uri;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, p2}, Lv4/a;->b(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/facebook/internal/u0;->Y(Landroid/net/Uri;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 35
    .line 36
    const-string v1, "image/png"

    .line 37
    .line 38
    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Landroid/os/Bundle;

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const-string p1, "file"

    .line 48
    .line 49
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/facebook/GraphRequest;

    .line 53
    .line 54
    sget-object v6, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 55
    .line 56
    const/16 v9, 0x20

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    const-string v4, "me/staging_resources"

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v2, p1

    .line 63
    move-object v3, p0

    .line 64
    move-object v7, p2

    .line 65
    invoke-direct/range {v2 .. v10}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    .line 70
    .line 71
    const-string p1, "The image Uri must be either a file:// or content:// Uri"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static final b(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p0    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/GraphRequest$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/high16 v0, 0x10000000

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 8
    .line 9
    const-string v1, "image/png"

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroid/os/Bundle;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string p1, "file"

    .line 21
    .line 22
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/facebook/GraphRequest;

    .line 26
    .line 27
    sget-object v6, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 28
    .line 29
    const/16 v9, 0x20

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const-string v4, "me/staging_resources"

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    move-object v2, p1

    .line 36
    move-object v3, p0

    .line 37
    move-object v7, p2

    .line 38
    invoke-direct/range {v2 .. v10}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method
