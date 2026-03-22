package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.extensions.JSONArrayExtensionsKt;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import gt.c0;
import gt.e;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import rs.c;
/* compiled from: AndroidExecuteAdViewerRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidExecuteAdViewerRequest implements ExecuteAdViewerRequest {
    @NotNull
    private final GetCachedAsset getCachedAsset;
    @NotNull
    private final HttpClient httpClient;
    @NotNull
    private final c0 ioDispatcher;

    /* compiled from: AndroidExecuteAdViewerRequest.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RequestType.values().length];
            try {
                iArr[RequestType.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RequestType.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RequestType.POST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AndroidExecuteAdViewerRequest(@NotNull c0 ioDispatcher, @NotNull HttpClient httpClient, @NotNull GetCachedAsset getCachedAsset) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(getCachedAsset, "getCachedAsset");
        this.ioDispatcher = ioDispatcher;
        this.httpClient = httpClient;
        this.getCachedAsset = getCachedAsset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HttpRequest createRequest(RequestType requestType, Object[] objArr) {
        boolean z10;
        Map<String, List<String>> i10;
        int i11;
        int i12;
        Map<String, List<String>> i13;
        int i14;
        int i15;
        String str = (String) n.t0(objArr, 1);
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            int i16 = WhenMappings.$EnumSwitchMapping$0[requestType.ordinal()];
            if (i16 != 1 && i16 != 2) {
                if (i16 == 3) {
                    String str2 = (String) n.t0(objArr, 2);
                    JSONArray jSONArray = (JSONArray) n.t0(objArr, 3);
                    Integer num = (Integer) n.t0(objArr, 4);
                    Integer num2 = (Integer) n.t0(objArr, 5);
                    if (jSONArray == null || (i13 = JSONArrayExtensionsKt.getHeadersMap(jSONArray)) == null) {
                        i13 = p0.i();
                    }
                    Map<String, List<String>> map = i13;
                    if (num != null) {
                        i14 = num.intValue();
                    } else {
                        i14 = 30000;
                    }
                    if (num2 != null) {
                        i15 = num2.intValue();
                    } else {
                        i15 = 30000;
                    }
                    return new HttpRequest(str, null, requestType, str2, map, null, null, null, null, i14, i15, 0, 0, false, null, null, 0, 129506, null);
                }
                throw new NoWhenBranchMatchedException();
            }
            JSONArray jSONArray2 = (JSONArray) n.t0(objArr, 2);
            Integer num3 = (Integer) n.t0(objArr, 3);
            Integer num4 = (Integer) n.t0(objArr, 4);
            if (jSONArray2 == null || (i10 = JSONArrayExtensionsKt.getHeadersMap(jSONArray2)) == null) {
                i10 = p0.i();
            }
            Map<String, List<String>> map2 = i10;
            if (num3 != null) {
                i11 = num3.intValue();
            } else {
                i11 = 30000;
            }
            if (num4 != null) {
                i12 = num4.intValue();
            } else {
                i12 = 30000;
            }
            return new HttpRequest(str, null, requestType, null, map2, null, null, null, null, i11, i12, 0, 0, false, null, null, 0, 129514, null);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // com.unity3d.ads.core.domain.ExecuteAdViewerRequest
    @Nullable
    public Object invoke(@NotNull RequestType requestType, @NotNull Object[] objArr, @NotNull c<? super HttpResponse> cVar) {
        return e.g(this.ioDispatcher, new AndroidExecuteAdViewerRequest$invoke$2(objArr, this, requestType, null), cVar);
    }
}
