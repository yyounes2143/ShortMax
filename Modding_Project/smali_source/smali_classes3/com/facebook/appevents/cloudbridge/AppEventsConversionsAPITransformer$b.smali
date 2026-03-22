.class public final Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;
.super Ljava/lang/Object;
.source "AppEventsConversionsAPITransformer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;)V
    .locals 1
    .param p1    # Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "section"

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
    iput-object p1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;

    .line 23
    .line 24
    if-eq v1, p1, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SectionFieldMapping(section="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->a:Lcom/facebook/appevents/cloudbridge/ConversionsAPISection;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", field="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$b;->b:Lcom/facebook/appevents/cloudbridge/ConversionsAPIUserAndAppDataField;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
