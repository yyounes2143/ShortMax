package sl;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
/* compiled from: QueryInfoCallback.java */
/* loaded from: classes7.dex */
public class a extends QueryInfoGenerationCallback {

    /* renamed from: a  reason: collision with root package name */
    private String f66377a;

    /* renamed from: b  reason: collision with root package name */
    private ol.a f66378b;

    public a(String str, ol.a aVar) {
        this.f66377a = str;
        this.f66378b = aVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onFailure(String str) {
        this.f66378b.onFailure(str);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onSuccess(QueryInfo queryInfo) {
        this.f66378b.a(this.f66377a, queryInfo.getQuery(), queryInfo);
    }
}
