package io.bidmachine.iab.vast.processor;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.tags.AdVerificationsExtensionTag;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.CompanionTag;
import io.bidmachine.iab.vast.tags.LinearCreativeTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import io.bidmachine.iab.vast.tags.VideoClicksTag;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import sm.q;
import tm.g;
/* loaded from: classes7.dex */
public class VastAd implements Parcelable {
    public static final Parcelable.Creator<VastAd> CREATOR = new a();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearCreativeTag f54850a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final MediaFileTag f54851b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private io.bidmachine.iab.vast.a f54852c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<CompanionTag> f54853d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<String> f54854e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<String> f54855f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<String> f54856g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<String> f54857h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private EnumMap<TrackingEvent, List<String>> f54858i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private AppodealExtensionTag f54859j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private List<AdVerificationsExtensionTag> f54860k = new ArrayList();

    /* loaded from: classes7.dex */
    class a implements Parcelable.Creator<VastAd> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public VastAd createFromParcel(Parcel parcel) {
            return new VastAd(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public VastAd[] newArray(int i10) {
            return new VastAd[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastAd(@NonNull LinearCreativeTag linearCreativeTag, @NonNull MediaFileTag mediaFileTag) {
        this.f54850a = linearCreativeTag;
        this.f54851b = mediaFileTag;
    }

    public void A(@NonNull List<AdVerificationsExtensionTag> list) {
        this.f54860k = list;
    }

    public void B(@Nullable io.bidmachine.iab.vast.a aVar) {
        this.f54852c = aVar;
    }

    public void C(@Nullable ArrayList<String> arrayList) {
        this.f54857h = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable AppodealExtensionTag appodealExtensionTag) {
        this.f54859j = appodealExtensionTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable ArrayList<String> arrayList) {
        this.f54856g = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@Nullable EnumMap<TrackingEvent, List<String>> enumMap) {
        this.f54858i = enumMap;
    }

    void d(@NonNull g gVar) {
        io.bidmachine.iab.vast.a aVar = this.f54852c;
        if (aVar != null) {
            aVar.X(gVar);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@Nullable ArrayList<CompanionTag> arrayList) {
        this.f54853d = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@Nullable ArrayList<String> arrayList) {
        this.f54855f = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(@Nullable ArrayList<String> arrayList) {
        this.f54854e = arrayList;
    }

    @NonNull
    public List<AdVerificationsExtensionTag> h() {
        return this.f54860k;
    }

    @Nullable
    public AppodealExtensionTag j() {
        return this.f54859j;
    }

    @Nullable
    public CompanionTag k(@NonNull Context context) {
        ArrayList<CompanionTag> arrayList = this.f54853d;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<CompanionTag> it = this.f54853d.iterator();
            while (it.hasNext()) {
                CompanionTag next = it.next();
                int r02 = next.r0();
                int l02 = next.l0();
                if (r02 > -1 && l02 > -1) {
                    if (q.y(context) && r02 == 728 && l02 == 90) {
                        return next;
                    }
                    if (!q.y(context) && r02 == 320 && l02 == 50) {
                        return next;
                    }
                }
            }
        }
        return null;
    }

    @Nullable
    public String l() {
        VideoClicksTag s02 = this.f54850a.s0();
        if (s02 != null) {
            return s02.Z();
        }
        return null;
    }

    @Nullable
    public List<String> m() {
        return this.f54856g;
    }

    @Nullable
    public CompanionTag n(int i10, int i11) {
        ArrayList<CompanionTag> arrayList = this.f54853d;
        if (arrayList != null && !arrayList.isEmpty()) {
            HashMap hashMap = new HashMap();
            Iterator<CompanionTag> it = this.f54853d.iterator();
            while (it.hasNext()) {
                CompanionTag next = it.next();
                int r02 = next.r0();
                int l02 = next.l0();
                if (r02 > -1 && l02 > -1) {
                    float max = Math.max(r02, l02) / Math.min(r02, l02);
                    if (Math.min(r02, l02) >= 250 && max <= 2.5d && next.s0()) {
                        hashMap.put(Float.valueOf(r02 / l02), next);
                    }
                }
            }
            if (!hashMap.isEmpty()) {
                float f10 = i10 / i11;
                Set<Float> keySet = hashMap.keySet();
                float floatValue = ((Float) keySet.iterator().next()).floatValue();
                for (Float f11 : keySet) {
                    float floatValue2 = f11.floatValue();
                    if (Math.abs(floatValue - f10) > Math.abs(floatValue2 - f10)) {
                        floatValue = floatValue2;
                    }
                }
                return (CompanionTag) hashMap.get(Float.valueOf(floatValue));
            }
            d(g.f67427m);
        }
        return null;
    }

    @Nullable
    public Float o() {
        return this.f54850a.p0();
    }

    @Nullable
    public List<String> p() {
        return this.f54855f;
    }

    @Nullable
    public List<String> w() {
        return this.f54854e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeSerializable(this.f54850a);
        parcel.writeSerializable(this.f54851b);
        parcel.writeSerializable(this.f54853d);
        parcel.writeStringList(this.f54854e);
        parcel.writeStringList(this.f54855f);
        parcel.writeStringList(this.f54856g);
        parcel.writeStringList(this.f54857h);
        parcel.writeSerializable(this.f54858i);
        parcel.writeSerializable(this.f54859j);
        parcel.writeList(this.f54860k);
    }

    @NonNull
    public MediaFileTag x() {
        return this.f54851b;
    }

    @Nullable
    public Map<TrackingEvent, List<String>> y() {
        return this.f54858i;
    }

    @Nullable
    public ArrayList<String> z() {
        return this.f54857h;
    }

    protected VastAd(Parcel parcel) {
        this.f54850a = (LinearCreativeTag) parcel.readSerializable();
        this.f54851b = (MediaFileTag) parcel.readSerializable();
        this.f54853d = (ArrayList) parcel.readSerializable();
        this.f54854e = parcel.createStringArrayList();
        this.f54855f = parcel.createStringArrayList();
        this.f54856g = parcel.createStringArrayList();
        this.f54857h = parcel.createStringArrayList();
        this.f54858i = (EnumMap) parcel.readSerializable();
        this.f54859j = (AppodealExtensionTag) parcel.readSerializable();
        parcel.readList(this.f54860k, AdVerificationsExtensionTag.class.getClassLoader());
    }
}
