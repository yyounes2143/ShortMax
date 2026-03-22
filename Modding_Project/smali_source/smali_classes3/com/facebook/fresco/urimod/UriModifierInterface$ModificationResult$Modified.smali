.class public abstract Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Modified"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final newUri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;->newUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNewUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;->newUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method
