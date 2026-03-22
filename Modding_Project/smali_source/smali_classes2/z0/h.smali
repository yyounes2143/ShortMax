.class public Lz0/h;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Lz0/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ly0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly0/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ly0/o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz0/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lz0/h;->b:Ly0/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/i;Lcom/airbnb/lottie/model/layer/a;)Lt0/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p2, Lt0/q;

    .line 2
    .line 3
    invoke-direct {p2, p1, p3, p0}, Lt0/q;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lz0/h;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public b()Ly0/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly0/o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz0/h;->b:Ly0/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
