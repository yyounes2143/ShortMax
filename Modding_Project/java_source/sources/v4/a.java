package v4;

import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.internal.u0;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareInternalUtility.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShareInternalUtility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareInternalUtility.kt\ncom/facebook/share/internal/ShareInternalUtility\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,561:1\n1603#2,9:562\n1855#2:571\n1856#2:573\n1612#2:574\n1549#2:575\n1620#2,3:576\n1603#2,9:579\n1855#2:588\n1856#2:590\n1612#2:591\n1#3:572\n1#3:589\n*S KotlinDebug\n*F\n+ 1 ShareInternalUtility.kt\ncom/facebook/share/internal/ShareInternalUtility\n*L\n229#1:562,9\n229#1:571\n229#1:573\n229#1:574\n230#1:575\n230#1:576,3\n248#1:579,9\n248#1:588\n248#1:590\n248#1:591\n229#1:572\n248#1:589\n*E\n"})
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f68672a = new a();

    private a() {
    }

    @NotNull
    public static final GraphRequest a(@Nullable AccessToken accessToken, @NotNull Uri imageUri, @Nullable GraphRequest.b bVar) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        String path = imageUri.getPath();
        if (u0.b0(imageUri) && path != null) {
            return b(accessToken, new File(path), bVar);
        }
        if (u0.Y(imageUri)) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(imageUri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, bVar, null, 32, null);
        }
        throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
    }

    @NotNull
    public static final GraphRequest b(@Nullable AccessToken accessToken, @Nullable File file, @Nullable GraphRequest.b bVar) throws FileNotFoundException {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, bVar, null, 32, null);
    }
}
