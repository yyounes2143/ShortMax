.class public Ly3/n;
.super Ljava/lang/Object;
.source "ImageInfoImpl.java"

# interfaces
.implements Ly3/m;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ly3/p;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILy3/p;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ly3/p;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly3/n;->a:I

    .line 5
    .line 6
    iput p2, p0, Ly3/n;->b:I

    .line 7
    .line 8
    iput p3, p0, Ly3/n;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Ly3/n;->d:Ly3/p;

    .line 11
    .line 12
    iput-object p5, p0, Ly3/n;->e:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/n;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ly3/n;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ly3/n;->a:I

    .line 2
    .line 3
    return v0
.end method
