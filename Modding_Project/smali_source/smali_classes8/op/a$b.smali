.class Lop/a$b;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lop/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lop/a$c;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lop/a$c;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lop/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lop/a$b;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lop/a$b;->a:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lop/a$b;->c:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    iput-object p4, p0, Lop/a$b;->d:Lop/a$c;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic a(Lop/a$b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lop/a$b;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lop/a$b;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lop/a$b;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lop/a$b;)Lop/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lop/a$b;->d:Lop/a$c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    iget-object v1, p0, Lop/a$b;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lop/a$b;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lop/a$b;->b:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1}, Lop/a;->c(Landroid/content/Context;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Lop/a;->b(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v0, v1, v3}, Lop/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    .line 56
    iget-object v1, p0, Lop/a$b;->b:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v3, p0, Lop/a$b;->a:Landroid/net/Uri;

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    .line 74
    iget-object v3, p0, Lop/a$b;->b:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lop/a$b;->e:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    :try_start_4
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lop/a$b$a;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lop/a$b$a;-><init>(Lop/a$b;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_1
    :goto_0
    iget-object v0, p0, Lop/a$b;->d:Lop/a$c;

    .line 105
    .line 106
    const-string v1, "Image size is (0;0)"

    .line 107
    .line 108
    invoke-interface {v0, v1}, Lop/a$c;->onError(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 114
    .line 115
    .line 116
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lop/a$b;->d:Lop/a$c;

    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    const-string v0, "ImagePreparation error"

    .line 127
    .line 128
    :goto_2
    invoke-interface {v1, v0}, Lop/a$c;->onError(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_3
    return-void
.end method
