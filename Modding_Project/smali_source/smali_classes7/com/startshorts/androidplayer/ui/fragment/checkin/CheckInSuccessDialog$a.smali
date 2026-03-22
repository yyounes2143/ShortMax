.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;
.super Ljava/lang/Object;
.source "CheckInSuccessDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZIIIIILjava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;
    .locals 4
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "nextTaskDesc"

    .line 2
    .line 3
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "isSpecialTitle"

    .line 17
    .line 18
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string p1, "currentBonus"

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p1, "nextTaskBonus"

    .line 27
    .line 28
    invoke-virtual {v2, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "completeNum"

    .line 35
    .line 36
    invoke-virtual {v2, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string p1, "sumNum"

    .line 40
    .line 41
    invoke-virtual {v2, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string p1, "countDown"

    .line 45
    .line 46
    invoke-virtual {v2, p1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method
