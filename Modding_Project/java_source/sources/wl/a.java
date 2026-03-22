package wl;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
/* compiled from: QueryInfoCallback.java */
/* loaded from: classes7.dex */
public class a extends QueryInfoGenerationCallback {

    /* renamed from: a  reason: collision with root package name */
    private String f69935a;

    /* renamed from: b  reason: collision with root package name */
    private ol.a f69936b;

    public a(String str, ol.a aVar) {
        this.f69935a = str;
        this.f69936b = aVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onFailure(String str) {
        this.f69936b.onFailure(str);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onSuccess(QueryInfo queryInfo) {
        this.f69936b.a(this.f69935a, queryInfo.getQuery(), queryInfo);
    }
}
