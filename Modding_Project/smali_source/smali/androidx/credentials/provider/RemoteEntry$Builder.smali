.class public final Landroidx/credentials/provider/RemoteEntry$Builder;
.super Ljava/lang/Object;
.source "RemoteEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/RemoteEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
    iput-object p1, p0, Landroidx/credentials/provider/RemoteEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/RemoteEntry;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/credentials/provider/RemoteEntry;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/credentials/provider/RemoteEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/credentials/provider/RemoteEntry;-><init>(Landroid/app/PendingIntent;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
