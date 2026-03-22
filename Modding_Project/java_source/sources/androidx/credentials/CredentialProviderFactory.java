package androidx.credentials;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProviderFactory.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderFactory {
    @NotNull
    private static final String CREDENTIAL_PROVIDER_KEY = "androidx.credentials.CREDENTIAL_PROVIDER_KEY";
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_CRED_MAN_PRE_FRAMEWORK_API_LEVEL = 33;
    @NotNull
    private static final String TAG = "CredProviderFactory";

    /* compiled from: CredentialProviderFactory.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List<String> getAllowedProvidersFromManifest(Context context) {
            String string;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 132);
            ArrayList arrayList = new ArrayList();
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                Intrinsics.checkNotNullExpressionValue(serviceInfoArr, "packageInfo.services");
                for (ServiceInfo serviceInfo : serviceInfoArr) {
                    Bundle bundle = serviceInfo.metaData;
                    if (bundle != null && (string = bundle.getString(CredentialProviderFactory.CREDENTIAL_PROVIDER_KEY)) != null) {
                        arrayList.add(string);
                    }
                }
            }
            return CollectionsKt.d1(arrayList);
        }

        private final CredentialProvider instantiatePreUProvider(List<String> list, Context context) {
            CredentialProvider credentialProvider = null;
            for (String str : list) {
                try {
                    Object newInstance = Class.forName(str).getConstructor(Context.class).newInstance(context);
                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.credentials.CredentialProvider");
                    CredentialProvider credentialProvider2 = (CredentialProvider) newInstance;
                    if (!credentialProvider2.isAvailableOnDevice()) {
                        continue;
                    } else if (credentialProvider != null) {
                        Log.i(CredentialProviderFactory.TAG, "Only one active OEM CredentialProvider allowed");
                        return null;
                    } else {
                        credentialProvider = credentialProvider2;
                    }
                } catch (Throwable unused) {
                }
            }
            return credentialProvider;
        }

        private final CredentialProvider tryCreatePreUOemProvider(Context context) {
            List<String> allowedProvidersFromManifest = getAllowedProvidersFromManifest(context);
            if (allowedProvidersFromManifest.isEmpty()) {
                return null;
            }
            return instantiatePreUProvider(allowedProvidersFromManifest, context);
        }

        @Nullable
        public final CredentialProvider getBestAvailableProvider(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34) {
                return new CredentialProviderFrameworkImpl(context);
            }
            if (i10 <= 33) {
                return tryCreatePreUOemProvider(context);
            }
            return null;
        }

        @RequiresApi(34)
        @NotNull
        public final CredentialProvider getUAndAboveProvider(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new CredentialProviderFrameworkImpl(context);
        }

        private Companion() {
        }
    }
}
