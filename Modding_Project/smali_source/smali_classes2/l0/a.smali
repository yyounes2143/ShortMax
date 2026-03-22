.class public final Ll0/a;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/a$b;,
        Ll0/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Ll0/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lokhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcoil/network/CacheResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll0/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ll0/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll0/a;->c:Ll0/a$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ll0/a;->a:Lokhttp3/Request;

    .line 4
    iput-object p2, p0, Ll0/a;->b:Lcoil/network/CacheResponse;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ll0/a;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V

    return-void
.end method


# virtual methods
.method public final a()Lcoil/network/CacheResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ll0/a;->b:Lcoil/network/CacheResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ll0/a;->a:Lokhttp3/Request;

    .line 2
    .line 3
    return-object v0
.end method
