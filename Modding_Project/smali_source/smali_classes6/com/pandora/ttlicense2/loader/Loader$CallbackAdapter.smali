.class public Lcom/pandora/ttlicense2/loader/Loader$CallbackAdapter;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pandora/ttlicense2/loader/Loader$Loadable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pandora/ttlicense2/loader/Loader$Callback<",
        "TT;>;"
    }
.end annotation


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
.method public onLoadCanceled(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onLoadComplete(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onLoadError(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/io/IOException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/Loader$Loadable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onLoadStart(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method
