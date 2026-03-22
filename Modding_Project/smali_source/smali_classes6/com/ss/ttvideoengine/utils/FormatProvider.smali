.class public interface abstract Lcom/ss/ttvideoengine/utils/FormatProvider;
.super Ljava/lang/Object;
.source "FormatProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/utils/FormatProvider$Default;,
        Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/ss/ttvideoengine/utils/FormatProvider;

.field public static final FORMAT_M3U8:I = 0x1

.field public static final FORMAT_MPD:I = 0x2

.field public static final FORMAT_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/utils/FormatProvider$Default;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/utils/FormatProvider$Default;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/utils/FormatProvider;->DEFAULT:Lcom/ss/ttvideoengine/utils/FormatProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract provideFormat(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
