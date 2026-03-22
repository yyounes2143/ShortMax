.class public final Lcom/facebook/fresco/vito/source/EmptyImageSource;
.super Ljava/lang/Object;
.source "EmptyImageSource.kt"

# interfaces
.implements Lcom/facebook/fresco/vito/source/ImageSource;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/vito/source/EmptyImageSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/source/EmptyImageSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/vito/source/EmptyImageSource;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/vito/source/EmptyImageSource;->INSTANCE:Lcom/facebook/fresco/vito/source/EmptyImageSource;

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
