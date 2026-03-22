package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import com.unity3d.services.core.misc.JsonFlattener;
import com.unity3d.services.core.misc.JsonStorage;
import gatewayprotocol.v1.DeveloperConsentKt;
import gatewayprotocol.v1.DeveloperConsentOptionKt;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: AndroidDeveloperConsentDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidDeveloperConsentDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDeveloperConsentDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource\n+ 2 DeveloperConsentKt.kt\ngatewayprotocol/v1/DeveloperConsentKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 5 DeveloperConsentOptionKt.kt\ngatewayprotocol/v1/DeveloperConsentOptionKtKt\n*L\n1#1,89:1\n10#2:90\n1#3:91\n1#3:93\n1#3:96\n32#4:92\n33#4:94\n10#5:95\n*S KotlinDebug\n*F\n+ 1 AndroidDeveloperConsentDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource\n*L\n29#1:90\n29#1:91\n53#1:96\n37#1:92\n37#1:94\n53#1:95\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidDeveloperConsentDataSource implements DeveloperConsentDataSource {
    @NotNull
    private final FlattenerRulesUseCase flattenerRulesUseCase;
    @NotNull
    private final JsonStorage publicStorage;

    public AndroidDeveloperConsentDataSource(@NotNull FlattenerRulesUseCase flattenerRulesUseCase, @NotNull JsonStorage publicStorage) {
        Intrinsics.checkNotNullParameter(flattenerRulesUseCase, "flattenerRulesUseCase");
        Intrinsics.checkNotNullParameter(publicStorage, "publicStorage");
        this.flattenerRulesUseCase = flattenerRulesUseCase;
        this.publicStorage = publicStorage;
    }

    private final DeveloperConsentOuterClass.DeveloperConsentOption createDeveloperConsentOption(String str, boolean z10) {
        DeveloperConsentOptionKt.Dsl.Companion companion = DeveloperConsentOptionKt.Dsl.Companion;
        DeveloperConsentOuterClass.DeveloperConsentOption.Builder newBuilder = DeveloperConsentOuterClass.DeveloperConsentOption.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DeveloperConsentOptionKt.Dsl _create = companion._create(newBuilder);
        _create.setType(getDeveloperConsentType(str));
        if (_create.getType() == DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_CUSTOM) {
            _create.setCustomType(str);
        }
        _create.setValue(getDeveloperConsentChoice(Boolean.valueOf(z10)));
        return _create._build();
    }

    private final List<DeveloperConsentOuterClass.DeveloperConsentOption> developerConsentList() {
        DeveloperConsentOuterClass.DeveloperConsentOption developerConsentOption;
        ArrayList arrayList = new ArrayList();
        JSONObject fetchData = fetchData();
        Iterator<String> keys = fetchData.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "data.keys()");
        while (keys.hasNext()) {
            String key = keys.next();
            Object storedValue = fetchData.get(key);
            if (storedValue instanceof Boolean) {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                Intrinsics.checkNotNullExpressionValue(storedValue, "storedValue");
                developerConsentOption = createDeveloperConsentOption(key, ((Boolean) storedValue).booleanValue());
            } else {
                if (storedValue instanceof String) {
                    Intrinsics.checkNotNullExpressionValue(storedValue, "storedValue");
                    String str = (String) storedValue;
                    if (StringsKt.G(str, "true", true) || StringsKt.G(str, "false", true)) {
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        developerConsentOption = createDeveloperConsentOption(key, Boolean.parseBoolean(str));
                    }
                }
                developerConsentOption = null;
            }
            if (developerConsentOption != null) {
                arrayList.add(developerConsentOption);
            }
        }
        return arrayList;
    }

    private final JSONObject fetchData() {
        if (this.publicStorage.getData() != null) {
            JSONObject flattenJson = new JsonFlattener(this.publicStorage.getData()).flattenJson(".", this.flattenerRulesUseCase.invoke());
            Intrinsics.checkNotNullExpressionValue(flattenJson, "flattener.flattenJson(\".… flattenerRulesUseCase())");
            return flattenJson;
        }
        return new JSONObject();
    }

    private final DeveloperConsentOuterClass.DeveloperConsentChoice getDeveloperConsentChoice(Boolean bool) {
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return DeveloperConsentOuterClass.DeveloperConsentChoice.DEVELOPER_CONSENT_CHOICE_TRUE;
        }
        if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
            return DeveloperConsentOuterClass.DeveloperConsentChoice.DEVELOPER_CONSENT_CHOICE_FALSE;
        }
        return DeveloperConsentOuterClass.DeveloperConsentChoice.DEVELOPER_CONSENT_CHOICE_UNSPECIFIED;
    }

    private final DeveloperConsentOuterClass.DeveloperConsentType getDeveloperConsentType(String str) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1998919769:
                    if (str.equals("user.nonbehavioral")) {
                        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL;
                    }
                    break;
                case -1078801183:
                    if (str.equals("pipl.consent")) {
                        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_PIPL_CONSENT;
                    }
                    break;
                case -5454905:
                    if (str.equals(JsonStorageKeyNames.USER_NON_BEHAVIORAL_KEY)) {
                        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL;
                    }
                    break;
                case 194451659:
                    if (str.equals("gdpr.consent")) {
                        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_GDPR_CONSENT;
                    }
                    break;
                case 519433140:
                    if (str.equals("privacy.consent")) {
                        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT;
                    }
                    break;
                case 2033752033:
                    if (str.equals("privacy.useroveragelimit")) {
                        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT;
                    }
                    break;
            }
            return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_CUSTOM;
        }
        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_UNSPECIFIED;
    }

    @Override // com.unity3d.ads.core.data.datasource.DeveloperConsentDataSource
    @NotNull
    public DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
        DeveloperConsentKt.Dsl.Companion companion = DeveloperConsentKt.Dsl.Companion;
        DeveloperConsentOuterClass.DeveloperConsent.Builder newBuilder = DeveloperConsentOuterClass.DeveloperConsent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DeveloperConsentKt.Dsl _create = companion._create(newBuilder);
        _create.addAllOptions(_create.getOptions(), developerConsentList());
        return _create._build();
    }
}
