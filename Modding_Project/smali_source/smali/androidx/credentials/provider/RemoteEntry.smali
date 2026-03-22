.class public final Landroidx/credentials/provider/RemoteEntry;
.super Ljava/lang/Object;
.source "RemoteEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/RemoteEntry$Builder;,
        Landroidx/credentials/provider/RemoteEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/provider/RemoteEntry$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REVISION_ID:I = 0x1

.field private static final SLICE_HINT_PENDING_INTENT:Ljava/lang/String; = "androidx.credentials.provider.remoteEntry.SLICE_HINT_PENDING_INTENT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_SPEC_TYPE:Ljava/lang/String; = "RemoteEntry"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteEntry"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/RemoteEntry$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/provider/RemoteEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pendingIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    .line 10
    .line 11
    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/RemoteEntry;
    .locals 1
    .param p0    # Landroid/app/slice/Slice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/RemoteEntry;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/RemoteEntry;)Landroid/app/slice/Slice;
    .locals 1
    .param p0    # Landroidx/credentials/provider/RemoteEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->toSlice(Landroidx/credentials/provider/RemoteEntry;)Landroid/app/slice/Slice;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method
