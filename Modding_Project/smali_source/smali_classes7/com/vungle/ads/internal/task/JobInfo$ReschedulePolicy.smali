.class public interface abstract annotation Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy;
.super Ljava/lang/Object;
.source "JobInfo.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReschedulePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXPONENTIAL:I = 0x1

.field public static final LINEAR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy$Companion;->$$INSTANCE:Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy;->Companion:Lcom/vungle/ads/internal/task/JobInfo$ReschedulePolicy$Companion;

    .line 4
    .line 5
    return-void
.end method
