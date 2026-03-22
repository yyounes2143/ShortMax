.class interface abstract Lcom/amazonaws/internal/keyvaluestore/KeyProvider;
.super Ljava/lang/Object;
.source "KeyProvider.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/internal/keyvaluestore/KeyNotGeneratedException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/internal/keyvaluestore/KeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)V
.end method
