.class public final synthetic Lcom/airbnb/lottie/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/zip/ZipInputStream;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/m;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/zip/ZipInputStream;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/m;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/m;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/zip/ZipInputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/airbnb/lottie/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/s;->e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/r0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
