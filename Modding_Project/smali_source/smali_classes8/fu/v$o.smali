.class final Lfu/v$o;
.super Lfu/v;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfu/v<",
        "Lokhttp3/MultipartBody$Part;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lfu/v$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfu/v$o;

    .line 2
    .line 3
    invoke-direct {v0}, Lfu/v$o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfu/v$o;->a:Lfu/v$o;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfu/v;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method bridge synthetic a(Lfu/a0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lokhttp3/MultipartBody$Part;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lfu/v$o;->d(Lfu/a0;Lokhttp3/MultipartBody$Part;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d(Lfu/a0;Lokhttp3/MultipartBody$Part;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lfu/a0;->e(Lokhttp3/MultipartBody$Part;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method
