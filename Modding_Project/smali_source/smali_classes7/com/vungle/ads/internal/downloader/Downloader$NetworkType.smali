.class public interface abstract annotation Lcom/vungle/ads/internal/downloader/Downloader$NetworkType;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/Downloader$NetworkType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/downloader/Downloader$NetworkType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/downloader/Downloader$NetworkType$Companion;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/Downloader$NetworkType$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/vungle/ads/internal/downloader/Downloader$NetworkType;->Companion:Lcom/vungle/ads/internal/downloader/Downloader$NetworkType$Companion;

    .line 4
    .line 5
    return-void
.end method
