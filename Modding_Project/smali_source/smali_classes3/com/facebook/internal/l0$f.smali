.class public final Lcom/facebook/internal/l0$f;
.super Ljava/lang/Object;
.source "NativeProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/l0$f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/facebook/internal/l0$f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/facebook/internal/l0$e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/l0$f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/l0$f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/internal/l0$f;->c:Lcom/facebook/internal/l0$f$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/internal/l0$f;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/l0$f;Lcom/facebook/internal/l0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/l0$f;->a:Lcom/facebook/internal/l0$e;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic b(Lcom/facebook/internal/l0$f;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/internal/l0$f;->b:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/internal/l0$f;->b:I

    .line 2
    .line 3
    return v0
.end method
