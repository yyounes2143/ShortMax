.class interface abstract Lio/bidmachine/x3;
.super Ljava/lang/Object;
.source "IABSharedPreference.java"


# static fields
.field public static final a:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "IABGPP_HDR_GppString"

    .line 2
    .line 3
    const-string v6, "IABGPP_GppSID"

    .line 4
    .line 5
    const-string v0, "IABConsent_SubjectToGDPR"

    .line 6
    .line 7
    const-string v1, "IABTCF_gdprApplies"

    .line 8
    .line 9
    const-string v2, "IABConsent_ConsentString"

    .line 10
    .line 11
    const-string v3, "IABTCF_TCString"

    .line 12
    .line 13
    const-string v4, "IABUSPrivacy_String"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lio/bidmachine/x3;->a:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
