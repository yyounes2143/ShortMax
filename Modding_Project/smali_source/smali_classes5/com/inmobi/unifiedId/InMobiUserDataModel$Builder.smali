.class public final Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/unifiedId/InMobiUserDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInMobiUserDataModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiUserDataModel.kt\ncom/inmobi/unifiedId/InMobiUserDataModel$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/inmobi/unifiedId/InMobiUserDataTypes;

.field public b:Lcom/inmobi/unifiedId/InMobiUserDataTypes;

.field public c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final build()Lcom/inmobi/unifiedId/InMobiUserDataModel;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/inmobi/unifiedId/InMobiUserDataModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;->a:Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;->b:Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/unifiedId/InMobiUserDataModel;-><init>(Lcom/inmobi/unifiedId/InMobiUserDataTypes;Lcom/inmobi/unifiedId/InMobiUserDataTypes;Ljava/util/HashMap;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final emailId(Lcom/inmobi/unifiedId/InMobiUserDataTypes;)Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;
    .locals 0
    .param p1    # Lcom/inmobi/unifiedId/InMobiUserDataTypes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;->b:Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    .line 2
    .line 3
    return-object p0
.end method

.method public final extras(Ljava/util/HashMap;)Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final phoneNumber(Lcom/inmobi/unifiedId/InMobiUserDataTypes;)Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;
    .locals 0
    .param p1    # Lcom/inmobi/unifiedId/InMobiUserDataTypes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/inmobi/unifiedId/InMobiUserDataModel$Builder;->a:Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    .line 2
    .line 3
    return-object p0
.end method
