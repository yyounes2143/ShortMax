.class public final Lxj/a$c;
.super Ljava/lang/Object;
.source "AnimatorCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxj/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFLxj/a$a;)Lxj/a;
    .locals 1
    .param p3    # Lxj/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lxj/a$b;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lxj/a$b;-><init>(FFLxj/a$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
