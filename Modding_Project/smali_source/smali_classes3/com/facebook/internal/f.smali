.class public abstract Lcom/facebook/internal/f;
.super Ljava/lang/Object;
.source "FacebookDialogBase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFacebookDialogBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookDialogBase.kt\ncom/facebook/internal/FacebookDialogBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n1#2:286\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/internal/f;->a:Lcom/facebook/internal/f$a;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/internal/f;->b:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/f;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
