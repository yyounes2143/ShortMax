.class public final Lcom/vungle/ads/internal/task/Job$Result$Companion;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/Job$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/task/Job$Result$Companion;

.field public static final FAILURE:I = 0x1

.field public static final RESCHEDULE:I = 0x2

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/task/Job$Result$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/task/Job$Result$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/task/Job$Result$Companion;->$$INSTANCE:Lcom/vungle/ads/internal/task/Job$Result$Companion;

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
