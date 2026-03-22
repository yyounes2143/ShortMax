.class public interface abstract annotation Lcom/vungle/ads/internal/task/Job$Result;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/Job$Result$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/task/Job$Result$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FAILURE:I = 0x1

.field public static final RESCHEDULE:I = 0x2

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/task/Job$Result$Companion;->$$INSTANCE:Lcom/vungle/ads/internal/task/Job$Result$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/vungle/ads/internal/task/Job$Result;->Companion:Lcom/vungle/ads/internal/task/Job$Result$Companion;

    .line 4
    .line 5
    return-void
.end method
